.class final Lcom/xueqiu/android/common/camera/d;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/camera/a;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/common/camera/a;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/d;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/common/camera/a;B)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/camera/d;-><init>(Lcom/xueqiu/android/common/camera/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/d;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/a;->c(Lcom/xueqiu/android/common/camera/a;)V

    .line 331
    return-void
.end method
