.class final enum Lcom/xueqiu/android/trade/patternlock/n;
.super Ljava/lang/Enum;
.source "SetPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/trade/patternlock/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xueqiu/android/trade/patternlock/n;

.field public static final enum b:Lcom/xueqiu/android/trade/patternlock/n;

.field public static final enum c:Lcom/xueqiu/android/trade/patternlock/n;

.field public static final enum d:Lcom/xueqiu/android/trade/patternlock/n;

.field public static final enum e:Lcom/xueqiu/android/trade/patternlock/n;

.field private static final synthetic j:[Lcom/xueqiu/android/trade/patternlock/n;


# instance fields
.field public final f:I

.field public final g:Lcom/xueqiu/android/trade/patternlock/l;

.field public final h:Lcom/xueqiu/android/trade/patternlock/m;

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 63
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/n;

    const-string v1, "Draw"

    const/4 v2, 0x0

    const v3, 0x7f070283

    sget-object v4, Lcom/xueqiu/android/trade/patternlock/l;->a:Lcom/xueqiu/android/trade/patternlock/l;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/m;->b:Lcom/xueqiu/android/trade/patternlock/m;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/trade/patternlock/n;-><init>(Ljava/lang/String;IILcom/xueqiu/android/trade/patternlock/l;Lcom/xueqiu/android/trade/patternlock/m;Z)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/n;->a:Lcom/xueqiu/android/trade/patternlock/n;

    .line 65
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/n;

    const-string v1, "DrawTooShort"

    const/4 v2, 0x1

    const v3, 0x7f070287

    sget-object v4, Lcom/xueqiu/android/trade/patternlock/l;->c:Lcom/xueqiu/android/trade/patternlock/l;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/m;->b:Lcom/xueqiu/android/trade/patternlock/m;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/trade/patternlock/n;-><init>(Ljava/lang/String;IILcom/xueqiu/android/trade/patternlock/l;Lcom/xueqiu/android/trade/patternlock/m;Z)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/n;->b:Lcom/xueqiu/android/trade/patternlock/n;

    .line 67
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/n;

    const-string v1, "Confirm"

    const/4 v2, 0x2

    const v3, 0x7f070280

    sget-object v4, Lcom/xueqiu/android/trade/patternlock/l;->a:Lcom/xueqiu/android/trade/patternlock/l;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/m;->d:Lcom/xueqiu/android/trade/patternlock/m;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/trade/patternlock/n;-><init>(Ljava/lang/String;IILcom/xueqiu/android/trade/patternlock/l;Lcom/xueqiu/android/trade/patternlock/m;Z)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/n;->c:Lcom/xueqiu/android/trade/patternlock/n;

    .line 69
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/n;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x3

    const v3, 0x7f070282

    sget-object v4, Lcom/xueqiu/android/trade/patternlock/l;->a:Lcom/xueqiu/android/trade/patternlock/l;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/m;->d:Lcom/xueqiu/android/trade/patternlock/m;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/trade/patternlock/n;-><init>(Ljava/lang/String;IILcom/xueqiu/android/trade/patternlock/l;Lcom/xueqiu/android/trade/patternlock/m;Z)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/n;->d:Lcom/xueqiu/android/trade/patternlock/n;

    .line 71
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/n;

    const-string v1, "ConfirmCorrect"

    const/4 v2, 0x4

    const v3, 0x7f070286

    sget-object v4, Lcom/xueqiu/android/trade/patternlock/l;->a:Lcom/xueqiu/android/trade/patternlock/l;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/m;->c:Lcom/xueqiu/android/trade/patternlock/m;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/trade/patternlock/n;-><init>(Ljava/lang/String;IILcom/xueqiu/android/trade/patternlock/l;Lcom/xueqiu/android/trade/patternlock/m;Z)V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/n;->e:Lcom/xueqiu/android/trade/patternlock/n;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xueqiu/android/trade/patternlock/n;

    const/4 v1, 0x0

    sget-object v2, Lcom/xueqiu/android/trade/patternlock/n;->a:Lcom/xueqiu/android/trade/patternlock/n;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/xueqiu/android/trade/patternlock/n;->b:Lcom/xueqiu/android/trade/patternlock/n;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/xueqiu/android/trade/patternlock/n;->c:Lcom/xueqiu/android/trade/patternlock/n;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/xueqiu/android/trade/patternlock/n;->d:Lcom/xueqiu/android/trade/patternlock/n;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/xueqiu/android/trade/patternlock/n;->e:Lcom/xueqiu/android/trade/patternlock/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/n;->j:[Lcom/xueqiu/android/trade/patternlock/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/xueqiu/android/trade/patternlock/l;Lcom/xueqiu/android/trade/patternlock/m;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/trade/patternlock/l;",
            "Lcom/xueqiu/android/trade/patternlock/m;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/xueqiu/android/trade/patternlock/n;->f:I

    .line 82
    iput-object p4, p0, Lcom/xueqiu/android/trade/patternlock/n;->g:Lcom/xueqiu/android/trade/patternlock/l;

    .line 83
    iput-object p5, p0, Lcom/xueqiu/android/trade/patternlock/n;->h:Lcom/xueqiu/android/trade/patternlock/m;

    .line 84
    iput-boolean p6, p0, Lcom/xueqiu/android/trade/patternlock/n;->i:Z

    .line 85
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/patternlock/n;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/xueqiu/android/trade/patternlock/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/n;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/trade/patternlock/n;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/n;->j:[Lcom/xueqiu/android/trade/patternlock/n;

    invoke-virtual {v0}, [Lcom/xueqiu/android/trade/patternlock/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/trade/patternlock/n;

    return-object v0
.end method
