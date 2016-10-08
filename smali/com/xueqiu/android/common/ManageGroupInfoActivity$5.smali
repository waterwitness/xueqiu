.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;
.super Lcom/xueqiu/android/base/b/p;
.source "ManageGroupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/ManageGroupInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->i()V

    .line 187
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 183
    check-cast p1, Ljava/util/List;

    .line 1192
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    const v1, 0x7f0e0351

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->i()V

    .line 1194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1195
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1196
    new-instance v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/BaseGroupInfo;-><init>()V

    .line 1197
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    .line 1198
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    .line 1199
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getOrderId()I

    move-result v0

    iput v0, v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    .line 1200
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Ljava/util/List;)V

    .line 183
    return-void
.end method
