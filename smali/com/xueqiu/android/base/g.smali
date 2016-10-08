.class public final Lcom/xueqiu/android/base/g;
.super Ljava/lang/Object;
.source "EnvironmentManager.java"


# static fields
.field private static final a:Lcom/xueqiu/android/base/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/xueqiu/android/base/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/f;-><init>(B)V

    sput-object v0, Lcom/xueqiu/android/base/g;->a:Lcom/xueqiu/android/base/f;

    return-void
.end method

.method public static synthetic a()Lcom/xueqiu/android/base/f;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/xueqiu/android/base/g;->a:Lcom/xueqiu/android/base/f;

    return-object v0
.end method
