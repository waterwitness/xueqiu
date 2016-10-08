.class final enum Lcom/xueqiu/android/trade/patternlock/m;
.super Ljava/lang/Enum;
.source "SetPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/trade/patternlock/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xueqiu/android/trade/patternlock/m;

.field public static final enum b:Lcom/xueqiu/android/trade/patternlock/m;

.field public static final enum c:Lcom/xueqiu/android/trade/patternlock/m;

.field public static final enum d:Lcom/xueqiu/android/trade/patternlock/m;

.field private static final synthetic g:[Lcom/xueqiu/android/trade/patternlock/m;


# instance fields
.field public final e:I

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f07027e

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/m;

    const-string v1, "Continue"

    const v2, 0x7f070281

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/xueqiu/android/trade/patternlock/m;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/m;->a:Lcom/xueqiu/android/trade/patternlock/m;

    .line 48
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/m;

    const-string v1, "ContinueDisabled"

    const v2, 0x7f070281

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xueqiu/android/trade/patternlock/m;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/m;->b:Lcom/xueqiu/android/trade/patternlock/m;

    .line 49
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/m;

    const-string v1, "Confirm"

    invoke-direct {v0, v1, v5, v7, v4}, Lcom/xueqiu/android/trade/patternlock/m;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/m;->c:Lcom/xueqiu/android/trade/patternlock/m;

    .line 50
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/m;

    const-string v1, "ConfirmDisabled"

    invoke-direct {v0, v1, v6, v7, v3}, Lcom/xueqiu/android/trade/patternlock/m;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/m;->d:Lcom/xueqiu/android/trade/patternlock/m;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xueqiu/android/trade/patternlock/m;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/m;->a:Lcom/xueqiu/android/trade/patternlock/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/m;->b:Lcom/xueqiu/android/trade/patternlock/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/m;->c:Lcom/xueqiu/android/trade/patternlock/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/m;->d:Lcom/xueqiu/android/trade/patternlock/m;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/m;->g:[Lcom/xueqiu/android/trade/patternlock/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/xueqiu/android/trade/patternlock/m;->e:I

    .line 57
    iput-boolean p4, p0, Lcom/xueqiu/android/trade/patternlock/m;->f:Z

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/patternlock/m;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/xueqiu/android/trade/patternlock/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/m;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/trade/patternlock/m;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/m;->g:[Lcom/xueqiu/android/trade/patternlock/m;

    invoke-virtual {v0}, [Lcom/xueqiu/android/trade/patternlock/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/trade/patternlock/m;

    return-object v0
.end method
