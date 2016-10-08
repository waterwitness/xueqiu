.class public final Lcom/xueqiu/android/base/l;
.super Ljava/lang/Object;
.source "ProductFlavors.java"


# static fields
.field private static final a:Lcom/xueqiu/android/base/l;

.field private static b:Lcom/xueqiu/android/base/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/xueqiu/android/base/l;

    invoke-direct {v0}, Lcom/xueqiu/android/base/l;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/l;->a:Lcom/xueqiu/android/base/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    new-instance v0, Lcom/xueqiu/android/base/e;

    invoke-direct {v0}, Lcom/xueqiu/android/base/e;-><init>()V

    .line 14
    sput-object v0, Lcom/xueqiu/android/base/l;->b:Lcom/xueqiu/android/base/m;

    .line 15
    return-void
.end method

.method public static a()Lcom/xueqiu/android/base/l;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/xueqiu/android/base/l;->a:Lcom/xueqiu/android/base/l;

    return-object v0
.end method

.method public static b()Lcom/xueqiu/android/base/m;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xueqiu/android/base/l;->b:Lcom/xueqiu/android/base/m;

    return-object v0
.end method
