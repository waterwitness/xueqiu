.class final enum Lcom/xueqiu/android/community/a/ay;
.super Ljava/lang/Enum;
.source "UserGuideRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/community/a/ay;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xueqiu/android/community/a/ay;

.field public static final enum b:Lcom/xueqiu/android/community/a/ay;

.field public static final enum c:Lcom/xueqiu/android/community/a/ay;

.field private static final synthetic e:[Lcom/xueqiu/android/community/a/ay;


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/xueqiu/android/community/a/ay;

    const-string v1, "User"

    invoke-direct {v0, v1, v2, v2}, Lcom/xueqiu/android/community/a/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    new-instance v0, Lcom/xueqiu/android/community/a/ay;

    const-string v1, "Stock"

    invoke-direct {v0, v1, v3, v3}, Lcom/xueqiu/android/community/a/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    new-instance v0, Lcom/xueqiu/android/community/a/ay;

    const-string v1, "Cube"

    invoke-direct {v0, v1, v4, v4}, Lcom/xueqiu/android/community/a/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/community/a/ay;

    sget-object v1, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xueqiu/android/community/a/ay;->e:[Lcom/xueqiu/android/community/a/ay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/xueqiu/android/community/a/ay;->d:I

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/community/a/ay;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/xueqiu/android/community/a/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/ay;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/community/a/ay;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->e:[Lcom/xueqiu/android/community/a/ay;

    invoke-virtual {v0}, [Lcom/xueqiu/android/community/a/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/community/a/ay;

    return-object v0
.end method
