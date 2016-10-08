.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;
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
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->i()V

    .line 159
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 155
    check-cast p1, Ljava/util/List;

    .line 1164
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    const v1, 0x7f0e0351

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->i()V

    .line 1166
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/FriendshipGroup;

    .line 1168
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    new-instance v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/BaseGroupInfo;-><init>()V

    .line 1172
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    .line 1173
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    .line 1174
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getOrderId()I

    move-result v0

    iput v0, v2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    .line 1175
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Ljava/util/List;)V

    .line 155
    :cond_2
    return-void
.end method
