.class public final Lcom/xueqiu/android/common/w;
.super Ljava/lang/Object;
.source "ShareItemClickInstance.java"


# static fields
.field private static b:Lcom/xueqiu/android/common/w;


# instance fields
.field public a:Lcom/xueqiu/android/common/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/xueqiu/android/common/w;

    invoke-direct {v0}, Lcom/xueqiu/android/common/w;-><init>()V

    sput-object v0, Lcom/xueqiu/android/common/w;->b:Lcom/xueqiu/android/common/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Lcom/xueqiu/android/common/w;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/xueqiu/android/common/w;->b:Lcom/xueqiu/android/common/w;

    return-object v0
.end method
