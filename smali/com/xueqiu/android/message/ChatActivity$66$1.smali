.class final Lcom/xueqiu/android/message/ChatActivity$66$1;
.super Lcom/xueqiu/android/base/b/p;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity$66;
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
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/message/model/Message;

.field final synthetic c:Ljava/io/ByteArrayOutputStream;

.field final synthetic d:Lcom/xueqiu/android/message/ChatActivity$66;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity$66;Lcom/xueqiu/android/base/b/q;Lrx/i;Lcom/xueqiu/android/message/model/Message;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->d:Lcom/xueqiu/android/message/ChatActivity$66;

    iput-object p3, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->a:Lrx/i;

    iput-object p4, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->b:Lcom/xueqiu/android/message/model/Message;

    iput-object p5, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->c:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 2144
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->d:Lcom/xueqiu/android/message/ChatActivity$66;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    .line 2145
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2140
    check-cast p1, Lcom/xueqiu/android/common/model/PhotoUploadResult;

    .line 3149
    const-string v0, "%s%s?%dx%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3150
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 3151
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 3152
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3154
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->d:Lcom/xueqiu/android/message/ChatActivity$66;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->H(Lcom/xueqiu/android/message/ChatActivity;)Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v0

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PhotoUploadResult;->getFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;Ljava/io/InputStream;Lcom/d/a/c/c;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3159
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3164
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->d:Lcom/xueqiu/android/message/ChatActivity$66;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$66;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 3165
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->a:Lrx/i;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 3166
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$66$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 2140
    return-void

    .line 3161
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3156
    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3159
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 3161
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3158
    :catchall_0
    move-exception v0

    .line 3159
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3162
    :goto_1
    throw v0

    .line 3161
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
