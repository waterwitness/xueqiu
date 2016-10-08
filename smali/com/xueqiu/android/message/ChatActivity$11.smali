.class final Lcom/xueqiu/android/message/ChatActivity$11;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->m()V
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
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$11;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 711
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 2074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1714
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1715
    new-instance v0, Ljava/lang/String;

    .line 2082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1715
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1716
    const-string v1, "ChatActivity"

    const-string v2, "getUserMenu:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$11;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1719
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$11;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->g(Lcom/xueqiu/android/message/ChatActivity;)Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 1720
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/Menu;

    move-result-object v0

    .line 1721
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$11;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/snowballfinance/messageplatform/data/Menu;)V

    .line 711
    :cond_0
    return-void
.end method
