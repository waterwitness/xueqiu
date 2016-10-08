.class public Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;
.super Lcom/xueqiu/android/common/b;
.source "VerifyBindedPhoneNumActivity.java"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/os/Handler;

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->j:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->k:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->p:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->q:Landroid/widget/Button;

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->r:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->s:Landroid/widget/TextView;

    .line 180
    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->t:Landroid/os/Handler;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->u:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V
    .locals 5

    .prologue
    .line 1121
    new-instance v0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$5;-><init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 1180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 1136
    const-string v2, ""

    const-string v3, ""

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v4

    .line 2182
    iget-object v4, v4, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 1136
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xueqiu/android/base/b/ai;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 26
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V
    .locals 6

    .prologue
    .line 26
    .line 3143
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4182
    iget-object v4, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3148
    const-string v1, ""

    const-string v2, ""

    new-instance v5, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$6;

    invoke-direct {v5, p0, p0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$6;-><init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 26
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 26
    .line 5184
    const/16 v0, 0x1e

    iput v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->u:I

    .line 5185
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->t:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 5186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->t:Landroid/os/Handler;

    .line 5189
    :cond_0
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5190
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5192
    new-instance v1, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$7;-><init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;Landroid/widget/TextView;)V

    .line 5206
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->t:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5207
    const v1, 0x7f070357

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method static synthetic f(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->u:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->u:I

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->u:I

    return v0
.end method

.method static synthetic h(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j()V
    .locals 1

    .prologue
    .line 6174
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeIsSpamUser(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f0e00f0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->k:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->p:Landroid/widget/Button;

    .line 42
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->r:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0e00f3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->q:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->s:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->j:Ljava/lang/String;

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1113
    const-string v0, "%s **** %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->j:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->j:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;-><init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$2;-><init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$3;-><init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$4;-><init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method
