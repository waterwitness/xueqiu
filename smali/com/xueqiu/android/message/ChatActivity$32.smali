.class final Lcom/xueqiu/android/message/ChatActivity$32;
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
        "Lcom/xueqiu/android/message/model/Read;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$32;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1002
    check-cast p1, Lcom/xueqiu/android/message/model/Read;

    .line 2005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2007
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$32;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->d(Ljava/util/List;)V

    .line 1002
    return-void
.end method
