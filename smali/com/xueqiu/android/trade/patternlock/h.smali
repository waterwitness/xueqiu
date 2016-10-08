.class public final enum Lcom/xueqiu/android/trade/patternlock/h;
.super Ljava/lang/Enum;
.source "PatternView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/trade/patternlock/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xueqiu/android/trade/patternlock/h;

.field public static final enum b:Lcom/xueqiu/android/trade/patternlock/h;

.field public static final enum c:Lcom/xueqiu/android/trade/patternlock/h;

.field private static final synthetic d:[Lcom/xueqiu/android/trade/patternlock/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/h;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/trade/patternlock/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    .line 225
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/h;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/trade/patternlock/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/h;->b:Lcom/xueqiu/android/trade/patternlock/h;

    .line 230
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/h;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/trade/patternlock/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    .line 215
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->b:Lcom/xueqiu/android/trade/patternlock/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/h;->d:[Lcom/xueqiu/android/trade/patternlock/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/patternlock/h;
    .locals 1

    .prologue
    .line 215
    const-class v0, Lcom/xueqiu/android/trade/patternlock/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/h;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/trade/patternlock/h;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/h;->d:[Lcom/xueqiu/android/trade/patternlock/h;

    invoke-virtual {v0}, [Lcom/xueqiu/android/trade/patternlock/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/trade/patternlock/h;

    return-object v0
.end method
