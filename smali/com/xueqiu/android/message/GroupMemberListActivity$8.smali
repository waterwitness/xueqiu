.class final Lcom/xueqiu/android/message/GroupMemberListActivity$8;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupMemberListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/GroupMemberListActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/BatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcom/xueqiu/android/message/GroupMemberListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupMemberListActivity;Lcom/xueqiu/android/base/b/q;[J)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    iput-object p3, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->a:[J

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 218
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 215
    check-cast p1, Lcom/xueqiu/android/message/model/BatchResult;

    .line 1223
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/BatchResult;->getSuccess()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/BatchResult;->getSuccess()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->a:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v1

    .line 2180
    invoke-virtual {v1}, Lcom/xueqiu/android/message/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 2181
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/a/m;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 2183
    :cond_0
    iget-object v0, v1, Lcom/xueqiu/android/message/a/m;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2184
    invoke-virtual {v1}, Lcom/xueqiu/android/message/a/m;->notifyDataSetChanged()V

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v0

    .line 3160
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/message/a/m;->a:Z

    .line 1227
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/m;->notifyDataSetChanged()V

    .line 1228
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->b()V

    .line 1229
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$8;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->i()V

    .line 215
    return-void
.end method
