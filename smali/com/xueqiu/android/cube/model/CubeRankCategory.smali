.class public final enum Lcom/xueqiu/android/cube/model/CubeRankCategory;
.super Ljava/lang/Enum;
.source "CubeRankCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/cube/model/CubeRankCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/cube/model/CubeRankCategory;

.field public static final enum MOST_POPULAR:Lcom/xueqiu/android/cube/model/CubeRankCategory;

.field public static final enum MOST_VALUABLE:Lcom/xueqiu/android/cube/model/CubeRankCategory;

.field public static final enum TODAY_HOT:Lcom/xueqiu/android/cube/model/CubeRankCategory;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;

    const-string v1, "MOST_VALUABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_VALUABLE:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    .line 16
    new-instance v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;

    const-string v1, "MOST_POPULAR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_POPULAR:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    .line 17
    new-instance v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;

    const-string v1, "TODAY_HOT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v5, v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->TODAY_HOT:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/cube/model/CubeRankCategory;

    sget-object v1, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_VALUABLE:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_POPULAR:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/cube/model/CubeRankCategory;->TODAY_HOT:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->$VALUES:[Lcom/xueqiu/android/cube/model/CubeRankCategory;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value:I

    .line 23
    return-void
.end method

.method public static fromValue(I)Lcom/xueqiu/android/cube/model/CubeRankCategory;
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/xueqiu/android/cube/model/CubeRankCategory;->values()[Lcom/xueqiu/android/cube/model/CubeRankCategory;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    iget v4, v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value:I

    if-ne v4, p0, :cond_0

    .line 31
    :goto_1
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/CubeRankCategory;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/cube/model/CubeRankCategory;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->$VALUES:[Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-virtual {v0}, [Lcom/xueqiu/android/cube/model/CubeRankCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/cube/model/CubeRankCategory;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value:I

    return v0
.end method
