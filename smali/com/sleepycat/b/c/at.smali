.class public final enum Lcom/sleepycat/b/c/at;
.super Ljava/lang/Enum;
.source "PutMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/c/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/c/at;

.field public static final enum b:Lcom/sleepycat/b/c/at;

.field public static final enum c:Lcom/sleepycat/b/c/at;

.field public static final enum d:Lcom/sleepycat/b/c/at;

.field private static final synthetic e:[Lcom/sleepycat/b/c/at;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sleepycat/b/c/at;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    .line 25
    new-instance v0, Lcom/sleepycat/b/c/at;

    const-string v1, "NO_DUP_DATA"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/at;->b:Lcom/sleepycat/b/c/at;

    .line 31
    new-instance v0, Lcom/sleepycat/b/c/at;

    const-string v1, "NO_OVERWRITE"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/at;->c:Lcom/sleepycat/b/c/at;

    .line 37
    new-instance v0, Lcom/sleepycat/b/c/at;

    const-string v1, "OVERWRITE"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/at;->d:Lcom/sleepycat/b/c/at;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/c/at;

    sget-object v1, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/c/at;->b:Lcom/sleepycat/b/c/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/c/at;->c:Lcom/sleepycat/b/c/at;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/c/at;->d:Lcom/sleepycat/b/c/at;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/c/at;->e:[Lcom/sleepycat/b/c/at;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/c/at;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/sleepycat/b/c/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/at;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/c/at;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sleepycat/b/c/at;->e:[Lcom/sleepycat/b/c/at;

    invoke-virtual {v0}, [Lcom/sleepycat/b/c/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/c/at;

    return-object v0
.end method
