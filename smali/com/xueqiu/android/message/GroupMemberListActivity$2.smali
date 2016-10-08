.class final Lcom/xueqiu/android/message/GroupMemberListActivity$2;
.super Ljava/lang/Object;
.source "GroupMemberListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/GroupMemberListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/GroupMemberListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/GroupMemberListActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$2;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$2;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v0

    .line 1156
    iget-boolean v0, v0, Lcom/xueqiu/android/message/a/m;->a:Z

    .line 102
    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$2;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/GroupMemberListActivity;->a(Lcom/xueqiu/android/message/GroupMemberListActivity;)Lcom/xueqiu/android/message/a/m;

    move-result-object v1

    .line 2111
    invoke-virtual {v1, p3}, Lcom/xueqiu/android/message/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 2112
    iget-object v2, v1, Lcom/xueqiu/android/message/a/m;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2113
    iget-object v2, v1, Lcom/xueqiu/android/message/a/m;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    :goto_0
    invoke-virtual {v1}, Lcom/xueqiu/android/message/a/m;->notifyDataSetChanged()V

    .line 109
    :goto_1
    return-void

    .line 2115
    :cond_0
    iget-object v2, v1, Lcom/xueqiu/android/message/a/m;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v2, "extra_user"

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/message/GroupMemberListActivity$2;->a:Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/GroupMemberListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
