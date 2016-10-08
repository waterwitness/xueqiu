.class final Lcom/xueqiu/android/message/ChatActivity$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/model/Message;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Date;

.field final synthetic c:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;ILjava/util/Date;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$1;->c:Lcom/xueqiu/android/message/ChatActivity;

    iput p2, p0, Lcom/xueqiu/android/message/ChatActivity$1;->a:I

    iput-object p3, p0, Lcom/xueqiu/android/message/ChatActivity$1;->b:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 2074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1238
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1239
    const-string v0, "ChatActivity"

    const-string v1, "get messages [limit:%d] [until:%s] success."

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/xueqiu/android/message/ChatActivity$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity$1;->b:Ljava/util/Date;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    new-instance v0, Ljava/lang/String;

    .line 2082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1241
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$1$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$1$4;-><init>(Lcom/xueqiu/android/message/ChatActivity$1;)V

    .line 1242
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$1$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$1$3;-><init>(Lcom/xueqiu/android/message/ChatActivity$1;)V

    .line 1248
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Lrx/a;->i()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$1$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$1$2;-><init>(Lcom/xueqiu/android/message/ChatActivity$1;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 1258
    invoke-virtual {v0}, Lrx/a;->i()Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ChatActivity$1$1;-><init>(Lcom/xueqiu/android/message/ChatActivity$1;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    :goto_0
    return-void

    .line 1269
    :cond_0
    const-string v0, "ChatActivity"

    const-string v1, "get messages [limit:%d] [until:%s] failed."

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/xueqiu/android/message/ChatActivity$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity$1;->b:Ljava/util/Date;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
