.class final Lcom/xueqiu/android/message/GroupMemberListActivity$7;
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
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/message/GroupMemberListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupMemberListActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$7;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    iput-object p3, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$7;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 195
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 196
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 192
    check-cast p1, Lcom/xueqiu/android/message/model/BatchResult;

    .line 1200
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/BatchResult;->getSuccess()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/BatchResult;->getSuccess()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$7;->b:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$7;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/m;->remove(Ljava/lang/Object;)V

    .line 192
    :cond_0
    return-void
.end method
