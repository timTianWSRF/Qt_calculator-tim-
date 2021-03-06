# Qt_calculator
**介绍：使用Qt5做的仿计算器APP**  
### ⚪项目结构
![alt 项目结构](./2.PNG "项目结构")
- - -
### ⚪界面展示
![alt 界面展示](./1.PNG "界面展示")
- - -
### ⚪项目思路
使用了布局管理器（*QGridLayout*）一行4个空，一共5行。用了三个*label*和12个*button* ，C键是*clear*的意思，直接作*清空*操作。 

这个计算器是不含括号的但是有优先级的，基本原理就是先转为逆波兰表达式，再计算结果。  
- - -
### ⚪相关代码注释
该项目的类名也叫*second*，*second*类定义如下所示：
```C++
class second : public QWidget {
Q_OBJECT

public:
    QString h="";//h用于存放当前的式子
    explicit second(QWidget *parent = nullptr);

    ~second() override;

private:
    Ui::second *ui;
    //定义各个部件
    QLabel *text_content, *answer, *question;
    QPushButton *cal,*one,*two,*three,*four,*five,*six,*seven,*eight,*nine,*zero,*clear,*plus,*minus,*cheng,*chu;


private slots:
    //计算的核心函数，具体定义在second.cpp中
    void CAL();
    //为了方便，就不在second.cpp中定义了，但这是不规范的。
    //用于定义每个按钮的行为，对应哪个按钮从函数名就可以看出。
    void One()
    {
        h+='1';
        question->setText(h);
    };
    void Two()
    {
        h+='2';
        question->setText(h);
    };
    void Three()
    {
        h+='3';
        question->setText(h);
    };
    void Four()
    {
        h+='4';
        question->setText(h);
    };
    void Five()
    {
        h+='5';
        question->setText(h);
    };
    void Six()
    {
        h+='6';
        question->setText(h);
    };
    void Seven()
    {
        h+='7';
        question->setText(h);
    };
    void Eight()
    {
        h+='8';
        question->setText(h);
    };
    void Nine()
    {
        h+='9';
        question->setText(h);
    };
    void Zero()
    {
        h+='0';
        question->setText(h);
    };
    void Plus()
    {
        h+='+';
        question->setText(h);
    };
    void Minus()
    {
        h+='-';
        question->setText(h);
    };
    void Cheng()
    {
        h+='*';
        question->setText(h);
    };
    void Chu()
    {
        h+='/';
        question->setText(h);
    };
    void Clear()
    {
        h="";
        question->setText(h);
    };

};
```
这里的栈（*stack*）没有使用STL给的模板，直接用指针手撕。
```C++
//手撕单链表用于表示栈stack，没有用STL。
//定义结点
struct node
{
    double data;
    node *next;
public:
    node();
};

node::node() {}

//定义栈
class stack
{
private:
    node* top;
public:
    stack() { top = NULL; }//初始化，构造函数
    ~stack();
    void push(double e);//入栈操作
    double pop();//退栈操作
    double getTop();//取顶部操作
    bool isEmpty() { if (top == NULL) return true; else return false; }//判空操作
};

double stack::getTop()
{
    if (top != NULL)
        return top->data;
}

stack::~stack()
{
    node* p;
    while (top)
    {
        p = top->next;
        delete top;
        top = p;
    }
}

void stack::push(double e)
{
    node* p = new node;
    if (!p)
    {
        //cout << "内存分配失败" << endl;
        return;
    }
    p->data = e;
    p->next = top;
    top = p;
}

double stack::pop()
{
    if (top == NULL)
    {
        //cout << "溢出" << endl;
    }
    double temp = top->data;
    node* p = top;
    top = top->next;
    delete p;
    return temp;
}

struct Node
{
    double data;
    Node *next;
};
class sqqueue
{
private:
    Node *front;
    Node *rear;
public:
    sqqueue();
    ~sqqueue();
    void enqueue(double e);
    double dequeue();
    bool isEmpty();
    double getFront();
};

double sqqueue::getFront()
{
    return front->next->data;
}

sqqueue::sqqueue()
{
    front = new Node;
    front->next = NULL;
    rear = front;
}

sqqueue::~sqqueue()
{
    Node *p=NULL;
    while (front != NULL)
    {
        p = front;
        front = front->next;
        delete p;
    }
}

void sqqueue::enqueue(double e)
{
    Node *s = new Node;
    s->data = e;
    s->next = rear->next;
    rear->next = s;
    rear = s;
    if (front->next == NULL)
        front->next = s;
}

double sqqueue::dequeue()
{
    double e;
    Node *p = NULL;
    if (rear == front)
    {
        //cout << "下溢" << endl;
    }
    p = front->next;
    e = p->data;
    front->next = p->next;
    if (p->next == NULL)
        rear = front;
    delete p;
    return e;
}

sqqueue output;
stack s;
stack a;

//计算出具体的逆波兰表达式
void change(std::string str)
{
    double num;
    double temp;
    for (int i = 0; i < str.length();)
    {
        if (str[i] >= '0'&&str[i] <= '9')
        {
            temp = str[i++] - '0';
            while (i < str.length() && str[i] >= '0'&&str[i] <= '9')
            {
                temp = temp * 10 + (str[i] - '0');
                i++;
            }
            output.enqueue(temp);
        }
        else
        {
            if (((str[i] == '+' || str[i] == '-')&&(s.getTop() == -3|| s.getTop() == -4))|| ((str[i] == '+' || str[i] == '-') && (s.getTop() == -1 || s.getTop() == -2))|| ((str[i] == '*' || str[i] == '/') && (s.getTop() == -3 || s.getTop() == -4)))
            {
                while (!s.isEmpty())
                {
                    output.enqueue(s.pop());
                }
            }
            switch (str[i])
            {
            case '+':s.push(-1); break;
            case '-':s.push(-2); break;
            case '*':s.push(-3); break;
            case '/':s.push(-4); break;
            default:break;
            }
            i++;
        }
    }
    while (!s.isEmpty())
    {
        output.enqueue(s.pop());
    }
}

//计算逆波兰表达式的结果
void second::CAL()
{
    QString valueStr;
    QString tempStr=question->text();//获取信号
    std::string str=tempStr.toStdString();//将Qt的Qstring转化为string（C++标准的）
    change(str);
    double temp;
    double r, l;
    while (!output.isEmpty())
    {
        if (output.getFront() >= 0)
        {
            a.push(output.dequeue());
        }
        else
        {
            double x = output.dequeue();
            if (x == -1)
            {
                r = a.pop();
                l = a.pop();
                temp = l + r;
                a.push(temp);
            }
            else if (x == -2)
            {
                r = a.pop();
                l = a.pop();
                temp = l - r;
                a.push(temp);
            }
            else if (x == -3)
            {
                r = a.pop();
                l = a.pop();
                temp = l * r;
                a.push(temp);
            }
            else if (x == -4)
            {
                r = a.pop();
                l = a.pop();
                temp = l / r;
                a.push(temp);
            }
        }
    }
    double ans=a.pop();
    answer->setText(valueStr.setNum(ans));//传给槽
}

```
