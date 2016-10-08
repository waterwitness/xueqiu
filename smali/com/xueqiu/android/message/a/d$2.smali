.class final Lcom/xueqiu/android/message/a/d$2;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/model/Message;)V
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
.field final synthetic a:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$2;->a:Lcom/xueqiu/android/message/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 888
    check-cast p1, Ljava/util/List;

    .line 1891
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$2;->a:Lcom/xueqiu/android/message/a/d;

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;Ljava/util/List;)Ljava/util/List;

    .line 1892
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$2;->a:Lcom/xueqiu/android/message/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    .line 888
    return-void
.end method
