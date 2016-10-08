.class final Lcom/xueqiu/android/base/h5/e$3$1;
.super Lcom/xueqiu/android/base/b/p;
.source "H5Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/e$3;
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
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/base/h5/e$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/e$3;Lrx/i;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/e$3$1;->b:Lcom/xueqiu/android/base/h5/e$3;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/e$3$1;->a:Lrx/i;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    const-string v0, "H5Manager"

    const-string v1, "upgradeMobileModuleConfig failed."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$3$1;->b:Lcom/xueqiu/android/base/h5/e$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e$3;->a:Lcom/xueqiu/android/base/h5/e;

    .line 1047
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    const-string v0, "H5Manager"

    const-string v1, "upgrade modules end"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$3$1;->a:Lrx/i;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$3$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 151
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 143
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1155
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/h5/e$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/h5/e$3$1$1;-><init>(Lcom/xueqiu/android/base/h5/e$3$1;Lcom/google/gson/JsonObject;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 143
    return-void
.end method
