.class final enum Lcom/xueqiu/android/common/aa;
.super Ljava/lang/Enum;
.source "UserGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/common/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xueqiu/android/common/aa;

.field public static final enum b:Lcom/xueqiu/android/common/aa;

.field public static final enum c:Lcom/xueqiu/android/common/aa;

.field private static final synthetic e:[Lcom/xueqiu/android/common/aa;


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/xueqiu/android/common/aa;

    const-string v1, "InterestedTopic"

    const-string v2, "InterestedTopic"

    invoke-direct {v0, v1, v3, v2}, Lcom/xueqiu/android/common/aa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xueqiu/android/common/aa;->a:Lcom/xueqiu/android/common/aa;

    new-instance v0, Lcom/xueqiu/android/common/aa;

    const-string v1, "SuggestedFollows"

    const-string v2, "SuggestedFollows"

    invoke-direct {v0, v1, v4, v2}, Lcom/xueqiu/android/common/aa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xueqiu/android/common/aa;->b:Lcom/xueqiu/android/common/aa;

    new-instance v0, Lcom/xueqiu/android/common/aa;

    const-string v1, "Hint"

    const-string v2, "Hint"

    invoke-direct {v0, v1, v5, v2}, Lcom/xueqiu/android/common/aa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xueqiu/android/common/aa;->c:Lcom/xueqiu/android/common/aa;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/common/aa;

    sget-object v1, Lcom/xueqiu/android/common/aa;->a:Lcom/xueqiu/android/common/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/common/aa;->b:Lcom/xueqiu/android/common/aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/common/aa;->c:Lcom/xueqiu/android/common/aa;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xueqiu/android/common/aa;->e:[Lcom/xueqiu/android/common/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/xueqiu/android/common/aa;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/common/aa;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/xueqiu/android/common/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/aa;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/common/aa;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/xueqiu/android/common/aa;->e:[Lcom/xueqiu/android/common/aa;

    invoke-virtual {v0}, [Lcom/xueqiu/android/common/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/common/aa;

    return-object v0
.end method
