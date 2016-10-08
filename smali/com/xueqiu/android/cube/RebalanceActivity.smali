.class public Lcom/xueqiu/android/cube/RebalanceActivity;
.super Lcom/xueqiu/android/common/b;
.source "RebalanceActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/b/g;
.implements Lcom/xueqiu/android/cube/b/i;


# instance fields
.field private j:Lcom/xueqiu/android/cube/b/h;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/RebalanceActivity;Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/b/h;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/RebalanceActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/RebalanceActivity;)Lcom/xueqiu/android/cube/b/h;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Holding;I)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/model/Holding;I)V

    .line 132
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    iget-object v2, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    .line 1957
    iget-boolean v3, v2, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-eqz v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070423

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/cube/RebalanceActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/RebalanceActivity$2;-><init>(Lcom/xueqiu/android/cube/RebalanceActivity;)V

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070420

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 127
    :goto_1
    return-void

    .line 1960
    :cond_1
    iget-object v3, v2, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1961
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/b/h;->E()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/b/h;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1963
    :cond_3
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/b/h;->E()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 126
    :cond_4
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0e0018

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 54
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/cube/RebalanceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/RebalanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 61
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/RebalanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_cube_symbol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/RebalanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_readonly"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->k:Z

    .line 65
    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v0, "RebalanceActivity"

    const-string v1, "no cube provided!"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/RebalanceActivity;->finish()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/RebalanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_page_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 72
    if-nez p1, :cond_0

    .line 73
    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/RebalanceActivity;->h()Landroid/app/Dialog;

    .line 1180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 75
    const-wide/16 v2, -0x1

    new-instance v4, Lcom/xueqiu/android/cube/RebalanceActivity$1;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/cube/RebalanceActivity$1;-><init>(Lcom/xueqiu/android/cube/RebalanceActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->c(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 103
    :goto_1
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->k:Z

    if-eqz v0, :cond_0

    .line 104
    const v0, 0x7f0704f3

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 96
    :cond_2
    iget-boolean v1, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->k:Z

    invoke-static {v1, v5, v0}, Lcom/xueqiu/android/cube/b/h;->a(ZZLcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    .line 97
    if-ne v2, v6, :cond_3

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    .line 1564
    iget-object v0, v0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 98
    const-string v1, "extra_page_type"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/RebalanceActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/RebalanceActivity;->j:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    goto :goto_1
.end method
