.class final Lcom/xueqiu/android/message/TalkProfileActivity$5;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->toGroupMembers(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$5;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$5;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 519
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 520
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 515
    check-cast p1, Ljava/util/List;

    .line 1524
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$5;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 1525
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1529
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$5;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1530
    const-string v1, "extra_member_list"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1531
    const-string v1, "extra_group"

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$5;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1532
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$5;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
