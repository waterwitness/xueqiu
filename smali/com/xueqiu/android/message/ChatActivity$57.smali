.class final Lcom/xueqiu/android/message/ChatActivity$57;
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
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 1857
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$57;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1857
    check-cast p1, Ljava/util/List;

    .line 2860
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$57;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/List;)V

    .line 1857
    return-void
.end method
