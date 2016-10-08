.class final Lcom/xueqiu/android/base/util/aa$4;
.super Ljava/lang/Object;
.source "NotificationsUtil.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;J)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 381
    iput-object p1, p0, Lcom/xueqiu/android/base/util/aa$4;->a:Landroid/content/Context;

    const/16 v0, 0x270e

    iput v0, p0, Lcom/xueqiu/android/base/util/aa$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/xueqiu/android/base/util/aa$4;->a:Landroid/content/Context;

    iget v1, p0, Lcom/xueqiu/android/base/util/aa$4;->b:I

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 385
    return-void
.end method
