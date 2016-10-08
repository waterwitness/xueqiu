.class final Lcom/xueqiu/android/base/util/ap$5;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xueqiu/android/base/b/ai;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/base/util/ap$5;->c:Lcom/xueqiu/android/base/b/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 453
    check-cast p1, Lrx/i;

    .line 1456
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/util/ap$5$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/util/ap$5$1;-><init>(Lcom/xueqiu/android/base/util/ap$5;Lrx/i;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 453
    return-void
.end method
