.class final Lcom/xueqiu/android/base/h5/c$8;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Lcom/xueqiu/android/trade/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/b;

.field final synthetic b:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$8;->b:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$8;->a:Lcom/xueqiu/android/base/h5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$8;->b:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$8;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;I)V

    .line 644
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$8;->b:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$8;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;I)V

    .line 649
    return-void
.end method
