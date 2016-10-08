.class final enum Lcom/xueqiu/android/trade/patternlock/l;
.super Ljava/lang/Enum;
.source "SetPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/trade/patternlock/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xueqiu/android/trade/patternlock/l;

.field public static final enum b:Lcom/xueqiu/android/trade/patternlock/l;

.field public static final enum c:Lcom/xueqiu/android/trade/patternlock/l;

.field public static final enum d:Lcom/xueqiu/android/trade/patternlock/l;

.field private static final synthetic g:[Lcom/xueqiu/android/trade/patternlock/l;


# instance fields
.field public final e:I

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v2, 0x7f07027d

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/l;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/xueqiu/android/trade/patternlock/l;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/l;->a:Lcom/xueqiu/android/trade/patternlock/l;

    .line 32
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/l;

    const-string v1, "CancelDisabled"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xueqiu/android/trade/patternlock/l;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/l;->b:Lcom/xueqiu/android/trade/patternlock/l;

    .line 33
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/l;

    const-string v1, "Redraw"

    const v2, 0x7f070289

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/xueqiu/android/trade/patternlock/l;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/l;->c:Lcom/xueqiu/android/trade/patternlock/l;

    .line 34
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/l;

    const-string v1, "RedrawDisabled"

    const v2, 0x7f070289

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/xueqiu/android/trade/patternlock/l;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/l;->d:Lcom/xueqiu/android/trade/patternlock/l;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xueqiu/android/trade/patternlock/l;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/l;->a:Lcom/xueqiu/android/trade/patternlock/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/l;->b:Lcom/xueqiu/android/trade/patternlock/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/l;->c:Lcom/xueqiu/android/trade/patternlock/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/l;->d:Lcom/xueqiu/android/trade/patternlock/l;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/l;->g:[Lcom/xueqiu/android/trade/patternlock/l;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/xueqiu/android/trade/patternlock/l;->e:I

    .line 41
    iput-boolean p4, p0, Lcom/xueqiu/android/trade/patternlock/l;->f:Z

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/patternlock/l;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/xueqiu/android/trade/patternlock/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/l;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/trade/patternlock/l;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/l;->g:[Lcom/xueqiu/android/trade/patternlock/l;

    invoke-virtual {v0}, [Lcom/xueqiu/android/trade/patternlock/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/trade/patternlock/l;

    return-object v0
.end method
