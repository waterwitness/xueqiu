.class public final Lcom/xueqiu/android/base/util/ae;
.super Ljava/lang/Enum;
.source "PicUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/base/util/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 49
    sput v3, Lcom/xueqiu/android/base/util/ae;->a:I

    .line 53
    sput v4, Lcom/xueqiu/android/base/util/ae;->b:I

    .line 57
    sput v5, Lcom/xueqiu/android/base/util/ae;->c:I

    .line 61
    sput v0, Lcom/xueqiu/android/base/util/ae;->d:I

    .line 45
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/xueqiu/android/base/util/ae;->a:I

    aput v2, v0, v1

    sget v1, Lcom/xueqiu/android/base/util/ae;->b:I

    aput v1, v0, v3

    sget v1, Lcom/xueqiu/android/base/util/ae;->c:I

    aput v1, v0, v4

    sget v1, Lcom/xueqiu/android/base/util/ae;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/xueqiu/android/base/util/ae;->e:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/xueqiu/android/base/util/ae;->e:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
