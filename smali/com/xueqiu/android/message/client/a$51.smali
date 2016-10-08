.class final Lcom/xueqiu/android/message/client/a$51;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/snowballfinance/messageplatform/data/Message;",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$51;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 631
    check-cast p1, Lcom/snowballfinance/messageplatform/data/Message;

    .line 1634
    invoke-static {p1}, Lcom/xueqiu/android/message/model/Message;->wrapPlatformMessage(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v0

    .line 631
    return-object v0
.end method
