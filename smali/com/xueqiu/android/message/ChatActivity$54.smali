.class final Lcom/xueqiu/android/message/ChatActivity$54;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Message;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$54;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1693
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v4

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v6

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessage(JJJZ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v0

    .line 1694
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v9}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 1696
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 1697
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$54;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 1702
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    .line 1703
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 1704
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.talks"

    const-string v2, "extra_talks"

    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v3}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/x;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1705
    return-void

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 1700
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$54;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    goto :goto_0
.end method
