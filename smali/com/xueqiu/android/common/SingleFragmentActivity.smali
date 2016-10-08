.class public Lcom/xueqiu/android/common/SingleFragmentActivity;
.super Lcom/xueqiu/android/common/b;
.source "SingleFragmentActivity.java"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private k:Lcom/xueqiu/android/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/xueqiu/android/common/SingleFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/SingleFragmentActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xueqiu/android/common/c;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xueqiu/android/common/c;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/SingleFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string v1, "extra.fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    if-eqz p2, :cond_0

    .line 35
    const-string v1, "extra.param"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->setTheme(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/c;->y_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 84
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0e001b

    .line 43
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1054
    sget-object v1, Lcom/xueqiu/android/common/SingleFragmentActivity;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadFragment tag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clazz = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/c;

    iput-object v1, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    .line 1056
    iget-object v1, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    if-nez v1, :cond_0

    .line 1058
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/c;

    iput-object v0, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1064
    if-nez v0, :cond_1

    .line 1065
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    .line 1564
    iget-object v1, v1, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 1067
    if-eqz v1, :cond_2

    .line 1068
    iget-object v1, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    .line 2564
    iget-object v1, v1, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 1068
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1069
    iget-object v1, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    .line 3564
    iget-object v1, v1, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 1069
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1074
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 1075
    iget-object v1, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v4/a/ac;->b(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 1076
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->e()I

    .line 1060
    :goto_1
    return-void

    .line 1071
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/c;->e(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/common/SingleFragmentActivity;->k:Lcom/xueqiu/android/common/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/c;->B()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
