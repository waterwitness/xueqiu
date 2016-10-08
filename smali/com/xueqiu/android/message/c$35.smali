.class final Lcom/xueqiu/android/message/c$35;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/k",
        "<",
        "Lcom/xueqiu/android/community/model/UserNotification;",
        "Lcom/xueqiu/android/community/model/UserNotification;",
        "Lcom/xueqiu/android/community/model/UserNotification;",
        "Lcom/xueqiu/android/community/model/UserNotification;",
        "Lcom/xueqiu/android/community/model/UserNotification;",
        "Lcom/xueqiu/android/community/model/Remind;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 936
    check-cast p1, Lcom/xueqiu/android/community/model/UserNotification;

    check-cast p2, Lcom/xueqiu/android/community/model/UserNotification;

    check-cast p3, Lcom/xueqiu/android/community/model/UserNotification;

    check-cast p4, Lcom/xueqiu/android/community/model/UserNotification;

    check-cast p5, Lcom/xueqiu/android/community/model/UserNotification;

    check-cast p6, Lcom/xueqiu/android/community/model/Remind;

    .line 1941
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    iget-object v0, v0, Lcom/xueqiu/android/message/c;->c:Landroid/support/v4/content/r;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.UPDATE_UNREAD_COUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1942
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getPaidMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;I)I

    .line 1943
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->d(Lcom/xueqiu/android/message/c;I)I

    .line 1945
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 1946
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v2

    const/4 v1, 0x2

    invoke-static {v0, p2, v2}, Lcom/xueqiu/android/message/c;->b(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 1948
    if-eqz p3, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getTradeNotification()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v2

    const/4 v1, 0x3

    invoke-static {v0, p3, v2}, Lcom/xueqiu/android/message/c;->c(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 1951
    :cond_0
    if-eqz p4, :cond_2

    .line 1952
    iget-object v2, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getPaidMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v0

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static {v2, p4, v3, v1}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;II)V

    .line 1955
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, p5, v0}, Lcom/xueqiu/android/message/c;->d(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;I)V

    .line 1956
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getFollowers()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->g(Lcom/xueqiu/android/message/c;I)Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v0

    .line 1957
    iget-object v1, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-string v3, "key_new_follower"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    iget-object v1, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {p6}, Lcom/xueqiu/android/community/model/Remind;->getFollowers()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v3

    invoke-static {v1, v0, v3, v2}, Lcom/xueqiu/android/message/c;->b(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/community/model/UserNotification;II)V

    .line 1959
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1960
    iget-object v0, p0, Lcom/xueqiu/android/message/c$35;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 1962
    :cond_1
    const/4 v0, 0x0

    .line 936
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
