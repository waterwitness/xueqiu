.class final Lcom/xueqiu/android/base/h5/e$1;
.super Ljava/lang/Object;
.source "H5Manager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/e;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/base/h5/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/e;Z)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/e$1;->b:Lcom/xueqiu/android/base/h5/e;

    iput-boolean p2, p0, Lcom/xueqiu/android/base/h5/e$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$1;->b:Lcom/xueqiu/android/base/h5/e;

    iget-boolean v1, p0, Lcom/xueqiu/android/base/h5/e$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h5/e;->a(Z)V

    .line 113
    return-void
.end method
