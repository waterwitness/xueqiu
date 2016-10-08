.class public final Lcom/xueqiu/android/community/widget/j;
.super Landroid/widget/FrameLayout;
.source "TopicInputBar.java"


# instance fields
.field public a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

.field public b:Lcom/xueqiu/android/community/widget/k;

.field final c:Landroid/os/ResultReceiver;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/inputmethod/InputMethodManager;

.field private g:I

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v2, p0, Lcom/xueqiu/android/community/widget/j;->f:Landroid/view/inputmethod/InputMethodManager;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    .line 42
    new-instance v0, Lcom/xueqiu/android/community/widget/j$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/widget/j$1;-><init>(Lcom/xueqiu/android/community/widget/j;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/j;->h:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/xueqiu/android/community/widget/j$7;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/widget/j$7;-><init>(Lcom/xueqiu/android/community/widget/j;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/j;->c:Landroid/os/ResultReceiver;

    .line 1081
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03011e

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1082
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/widget/j;->addView(Landroid/view/View;)V

    .line 1084
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/j;->f:Landroid/view/inputmethod/InputMethodManager;

    .line 1085
    const v0, 0x7f0e02f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    .line 1087
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v2, Lcom/xueqiu/android/community/widget/j$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/widget/j$2;-><init>(Lcom/xueqiu/android/community/widget/j;)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    new-instance v2, Lcom/xueqiu/android/community/widget/j$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/widget/j$3;-><init>(Lcom/xueqiu/android/community/widget/j;)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1106
    const v0, 0x7f0e02f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/community/widget/j$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/widget/j$4;-><init>(Lcom/xueqiu/android/community/widget/j;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    const v0, 0x7f0e02f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/j;->d:Landroid/widget/GridView;

    .line 1117
    const v0, 0x7f0e02f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/j;->e:Landroid/widget/ImageView;

    .line 1119
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/message/a/j;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/j;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/message/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1120
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/community/widget/j$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/j$5;-><init>(Lcom/xueqiu/android/community/widget/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1137
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/community/widget/j$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/j$6;-><init>(Lcom/xueqiu/android/community/widget/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/j;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->f:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->e:Landroid/widget/ImageView;

    const v1, 0x7f0202a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->e:Landroid/widget/ImageView;

    const v1, 0x7f0202a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/j;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/widget/j;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->d:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/widget/j;)I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/widget/j;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/widget/j;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 31
    .line 1151
    iget v0, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    if-eq v0, v1, :cond_1

    .line 1152
    iput v1, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    .line 1153
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->f:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/widget/j;->c:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 1154
    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1157
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/widget/j;->a(I)V

    .line 1158
    :goto_0
    return-void

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/j;->a()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/widget/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    iput v3, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->f:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    iget-object v2, p0, Lcom/xueqiu/android/community/widget/j;->c:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 179
    iget v0, p0, Lcom/xueqiu/android/community/widget/j;->g:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/widget/j;->a(I)V

    .line 180
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 148
    return-void
.end method

.method public final setChildCanClick(Z)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->a:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setClickable(Z)V

    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 205
    return-void
.end method
