.class public final Lcom/xueqiu/android/stock/a/x;
.super Ljava/lang/Object;
.source "QuotesCenterRenderKit.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:Lcom/xueqiu/android/base/util/ar;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/x;->c:Lcom/xueqiu/android/base/util/ar;

    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 53
    iput p2, p0, Lcom/xueqiu/android/stock/a/x;->b:I

    .line 54
    return-void
.end method
