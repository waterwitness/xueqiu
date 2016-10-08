.class final Lcom/xueqiu/android/base/h5/l$11;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/l;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/base/h5/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l$11;->c:Lcom/xueqiu/android/base/h5/l;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/l$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/l$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l$11;->c:Lcom/xueqiu/android/base/h5/l;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    .line 412
    new-instance v1, Lcom/xueqiu/android/base/h5/l$11$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/h5/l$11$1;-><init>(Lcom/xueqiu/android/base/h5/l$11;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ao;->a(Lcom/xueqiu/android/base/b/i;)V

    .line 418
    return-void
.end method
