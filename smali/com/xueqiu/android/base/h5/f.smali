.class public final Lcom/xueqiu/android/base/h5/f;
.super Ljava/lang/Object;
.source "H5Manager.java"


# static fields
.field private static final a:Lcom/xueqiu/android/base/h5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/xueqiu/android/base/h5/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/h5/e;-><init>(B)V

    sput-object v0, Lcom/xueqiu/android/base/h5/f;->a:Lcom/xueqiu/android/base/h5/e;

    return-void
.end method

.method public static synthetic a()Lcom/xueqiu/android/base/h5/e;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/xueqiu/android/base/h5/f;->a:Lcom/xueqiu/android/base/h5/e;

    return-object v0
.end method
