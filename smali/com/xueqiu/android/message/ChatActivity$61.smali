.class final Lcom/xueqiu/android/message/ChatActivity$61;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        "Lrx/a",
        "<",
        "Lcom/snowballfinance/messageplatform/data/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$61;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1824
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 3074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 2827
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2828
    new-instance v0, Ljava/lang/String;

    .line 3082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 2828
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    .line 2829
    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2831
    :cond_0
    invoke-static {}, Lrx/a;->b()Lrx/a;

    move-result-object v0

    goto :goto_0
.end method
