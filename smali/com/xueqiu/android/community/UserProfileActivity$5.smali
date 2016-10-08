.class final Lcom/xueqiu/android/community/UserProfileActivity$5;
.super Lcom/xueqiu/android/base/b/p;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    iput-object p3, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->i()V

    .line 458
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 459
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 454
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1463
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->i()V

    .line 1464
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1465
    const v0, 0x7f070251

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 1466
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setRemark(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    const v1, 0x7f0e021a

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1470
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1471
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1474
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$5;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserProfileActivity;->d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    :cond_1
    :goto_0
    return-void

    .line 1475
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1476
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
