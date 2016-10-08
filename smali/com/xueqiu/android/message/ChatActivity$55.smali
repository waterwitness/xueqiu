.class final Lcom/xueqiu/android/message/ChatActivity$55;
.super Lcom/xueqiu/android/base/b/p;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Message;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/message/model/Message;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$55;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p3, p0, Lcom/xueqiu/android/message/ChatActivity$55;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1719
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1720
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1716
    check-cast p1, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    .line 2724
    const-string v0, "%s%s?%dx%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2725
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$55;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 2726
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$55;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$55;->a:Lcom/xueqiu/android/message/model/Message;

    const-string v1, "\u6211:[\u56fe\u7247]"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    .line 2731
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$55;->b:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$55;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    .line 1716
    return-void

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$55;->a:Lcom/xueqiu/android/message/model/Message;

    const-string v1, "[\u56fe\u7247]"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method
