.class final Lcom/xueqiu/android/message/a$2;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/xueqiu/android/message/a$2;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 278
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/message/a$2;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->z()V

    .line 280
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 275
    check-cast p1, Ljava/lang/Boolean;

    .line 1284
    iget-object v0, p0, Lcom/xueqiu/android/message/a$2;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->z()V

    .line 1285
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/xueqiu/android/message/a$2;->a:Lcom/xueqiu/android/message/a;

    const v1, 0x7f070251

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/xueqiu/android/message/a$2;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->onBackPressed()V

    :goto_0
    return-void

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a$2;->a:Lcom/xueqiu/android/message/a;

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
