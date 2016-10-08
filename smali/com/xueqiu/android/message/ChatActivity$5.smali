.class final Lcom/xueqiu/android/message/ChatActivity$5;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;J)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$5;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-wide p2, p0, Lcom/xueqiu/android/message/ChatActivity$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 452
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 1455
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xueqiu/android/message/ChatActivity$5;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 452
    return-object v0

    .line 1455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
