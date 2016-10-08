.class public final Lcom/xueqiu/android/common/widget/p;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Lcom/xueqiu/android/common/widget/r;

.field public c:Landroid/view/View;

.field d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

.field e:Landroid/inputmethodservice/Keyboard;

.field f:Landroid/inputmethodservice/Keyboard;

.field public g:Z

.field h:Landroid/widget/EditText;

.field public i:Lcom/xueqiu/android/common/widget/q;

.field public j:Landroid/view/ViewGroup;

.field private k:I

.field private l:Landroid/app/Activity;

.field private m:Landroid/inputmethodservice/Keyboard;

.field private n:Landroid/inputmethodservice/Keyboard;

.field private o:Landroid/inputmethodservice/Keyboard;

.field private p:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v3, p0, Lcom/xueqiu/android/common/widget/p;->g:Z

    .line 163
    new-instance v0, Lcom/xueqiu/android/common/widget/p$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/p$1;-><init>(Lcom/xueqiu/android/common/widget/p;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->p:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/p;->l:Landroid/app/Activity;

    .line 76
    iput p2, p0, Lcom/xueqiu/android/common/widget/p;->k:I

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    const v1, 0x7f03022a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    const v1, 0x7f0e0781

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->a:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    const v1, 0x7f0e0782

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    const v1, 0x7f0e054c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f050003

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->n:Landroid/inputmethodservice/Keyboard;

    .line 83
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f050002

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->o:Landroid/inputmethodservice/Keyboard;

    .line 84
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f050001

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->e:Landroid/inputmethodservice/Keyboard;

    .line 85
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x7f050004

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->f:Landroid/inputmethodservice/Keyboard;

    .line 86
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const/high16 v1, 0x7f050000

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/p;->m:Landroid/inputmethodservice/Keyboard;

    .line 87
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setPreviewEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->p:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 109
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->n:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->o:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->e:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->f:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 99
    iput-boolean v4, p0, Lcom/xueqiu/android/common/widget/p;->g:Z

    goto :goto_0

    .line 102
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->m:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/p;-><init>(Landroid/app/Activity;I)V

    .line 70
    iput-object p3, p0, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 71
    invoke-direct {p0, p3}, Lcom/xueqiu/android/common/widget/p;->a(Landroid/widget/EditText;)V

    .line 72
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 146
    :try_start_0
    const-class v0, Landroid/widget/EditText;

    .line 148
    const-string v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 243
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 244
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->j:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->j:Landroid/view/ViewGroup;

    .line 251
    :goto_0
    const v2, 0x7f0e0780

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/widget/p$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/p$2;-><init>(Lcom/xueqiu/android/common/widget/p;)V

    .line 262
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 268
    :cond_1
    :goto_1
    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1271
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1272
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->getVisibility()I

    move-result v0

    .line 1273
    if-eq v0, v7, :cond_4

    if-ne v0, v6, :cond_1

    .line 1274
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1275
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1276
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1277
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 1278
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1279
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1280
    new-instance v1, Lcom/xueqiu/android/common/widget/p$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/p$3;-><init>(Lcom/xueqiu/android/common/widget/p;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1296
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setVisibility(I)V

    .line 1297
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1298
    iget v0, p0, Lcom/xueqiu/android/common/widget/p;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1299
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1303
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    const v1, 0x7f0e054c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->i:Lcom/xueqiu/android/common/widget/q;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->i:Lcom/xueqiu/android/common/widget/q;

    invoke-interface {v0, v5}, Lcom/xueqiu/android/common/widget/q;->a(Z)V

    goto :goto_1

    .line 1301
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public final a(ILandroid/widget/EditText;Lcom/xueqiu/android/common/widget/r;)V
    .locals 2

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    if-eqz p2, :cond_0

    .line 132
    iput-object p2, p0, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 133
    iput-object p3, p0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 134
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/widget/p;->a(Landroid/widget/EditText;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/p;->a()V

    .line 137
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->n:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->o:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->e:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->f:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/p;->g:Z

    goto :goto_0

    .line 127
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->m:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    const v1, 0x7f0e054c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->getVisibility()I

    move-result v0

    .line 313
    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 316
    const-wide/16 v2, 0xd2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 317
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    new-instance v1, Lcom/xueqiu/android/common/widget/p$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/p$4;-><init>(Lcom/xueqiu/android/common/widget/p;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 339
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->i:Lcom/xueqiu/android/common/widget/q;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p;->i:Lcom/xueqiu/android/common/widget/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/q;->a(Z)V

    .line 343
    :cond_0
    return-void
.end method
