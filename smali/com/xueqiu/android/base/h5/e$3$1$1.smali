.class final Lcom/xueqiu/android/base/h5/e$3$1$1;
.super Ljava/lang/Object;
.source "H5Manager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/e$3$1;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonObject;

.field final synthetic b:Lcom/xueqiu/android/base/h5/e$3$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/e$3$1;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/e$3$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/e$3$1$1;->a:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$3$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e$3$1;->b:Lcom/xueqiu/android/base/h5/e$3;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e$3;->a:Lcom/xueqiu/android/base/h5/e;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/e$3$1$1;->a:Lcom/google/gson/JsonObject;

    .line 1047
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h5/e;->a(Lcom/google/gson/JsonObject;)Z

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/e$3$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/h5/e$3$1;->b:Lcom/xueqiu/android/base/h5/e$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/h5/e$3;->a:Lcom/xueqiu/android/base/h5/e;

    .line 2047
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    const-string v1, "H5Manager"

    const-string v2, "upgrade modules end"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/h5/e$3$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/base/h5/e$3$1$1$1;-><init>(Lcom/xueqiu/android/base/h5/e$3$1$1;Z)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 171
    return-void
.end method
