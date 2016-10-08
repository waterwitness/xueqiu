.class final Lcom/xueqiu/android/community/a/ak$17$2;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak$17;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/ak$17;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak$17;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$17$2;->a:Lcom/xueqiu/android/community/a/ak$17;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1512
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 1513
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1509
    .line 2517
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17$2;->a:Lcom/xueqiu/android/community/a/ak$17;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/ak$17;->a:Lcom/xueqiu/android/community/model/Status;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Status;->setMark(I)V

    .line 2518
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17$2;->a:Lcom/xueqiu/android/community/a/ak$17;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 1509
    return-void
.end method
