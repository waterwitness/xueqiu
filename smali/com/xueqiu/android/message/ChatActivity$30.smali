.class final Lcom/xueqiu/android/message/ChatActivity$30;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$30;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 990
    check-cast p1, Lcom/snowballfinance/messageplatform/a/t;

    .line 1993
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$30;->a:Lcom/xueqiu/android/message/ChatActivity;

    .line 2328
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/t;->c:Ljava/lang/Long;

    .line 1993
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2336
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/t;->d:Ljava/lang/Long;

    .line 1993
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 2344
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/t;->e:Ljava/lang/Boolean;

    .line 1993
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(JZ)V

    .line 990
    return-void
.end method
