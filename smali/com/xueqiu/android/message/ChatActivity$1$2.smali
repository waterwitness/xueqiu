.class final Lcom/xueqiu/android/message/ChatActivity$1$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;",
        "Lrx/a",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity$1;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$1$2;->a:Lcom/xueqiu/android/message/ChatActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    check-cast p1, Ljava/util/List;

    .line 1256
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$1$2;->a:Lcom/xueqiu/android/message/ChatActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$1;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    .line 253
    return-object v0
.end method
