.class final Lcom/xueqiu/android/stock/c/n$16$2;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/n$16;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n$16;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n$16;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$16$2;->a:Lcom/xueqiu/android/stock/c/n$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 771
    check-cast p1, Ljava/lang/Throwable;

    .line 1774
    const-string v0, "PortfolioFragment"

    const-string v1, "othersByHttp failed."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 771
    return-void
.end method
