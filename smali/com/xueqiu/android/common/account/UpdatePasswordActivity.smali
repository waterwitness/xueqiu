.class public Lcom/xueqiu/android/common/account/UpdatePasswordActivity;
.super Lcom/xueqiu/android/common/b;
.source "UpdatePasswordActivity.java"


# instance fields
.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V
    .locals 5

    .prologue
    .line 30
    .line 2100
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2101
    iget-object v1, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2102
    iget-object v2, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2104
    new-instance v3, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v3}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 2105
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v4

    .line 2274
    iget-object v4, v4, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2107
    const v0, 0x7f07020e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 2108
    invoke-virtual {v3, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$5;-><init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 30
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->setTheme(I)V

    .line 43
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->setContentView(I)V

    .line 2052
    const v0, 0x7f0e00ea

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->j:Landroid/widget/EditText;

    .line 2053
    const v0, 0x7f0e00ed

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->k:Landroid/widget/EditText;

    .line 2054
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->p:Landroid/widget/EditText;

    .line 2056
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$1;-><init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2079
    const v0, 0x7f0e00e8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$2;-><init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2085
    const v0, 0x7f0e00eb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$3;-><init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2091
    const v0, 0x7f0e00ee

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$4;-><init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-string v0, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
