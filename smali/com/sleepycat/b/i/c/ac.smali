.class public final enum Lcom/sleepycat/b/i/c/ac;
.super Ljava/lang/Enum;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/c/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/c/ac;

.field public static final enum b:Lcom/sleepycat/b/i/c/ac;

.field public static final enum c:Lcom/sleepycat/b/i/c/ac;

.field public static final enum d:Lcom/sleepycat/b/i/c/ac;

.field public static final enum e:Lcom/sleepycat/b/i/c/ac;

.field private static final synthetic f:[Lcom/sleepycat/b/i/c/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/sleepycat/b/i/c/ac;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/ac;->a:Lcom/sleepycat/b/i/c/ac;

    new-instance v0, Lcom/sleepycat/b/i/c/ac;

    const-string v1, "MEMBER_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/c/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/ac;->b:Lcom/sleepycat/b/i/c/ac;

    new-instance v0, Lcom/sleepycat/b/i/c/ac;

    const-string v1, "IS_MASTER"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/i/c/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/ac;->c:Lcom/sleepycat/b/i/c/ac;

    new-instance v0, Lcom/sleepycat/b/i/c/ac;

    const-string v1, "IS_REPLICA"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/i/c/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/ac;->d:Lcom/sleepycat/b/i/c/ac;

    new-instance v0, Lcom/sleepycat/b/i/c/ac;

    const-string v1, "TRANSFER_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/i/c/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/ac;->e:Lcom/sleepycat/b/i/c/ac;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sleepycat/b/i/c/ac;

    sget-object v1, Lcom/sleepycat/b/i/c/ac;->a:Lcom/sleepycat/b/i/c/ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/c/ac;->b:Lcom/sleepycat/b/i/c/ac;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/i/c/ac;->c:Lcom/sleepycat/b/i/c/ac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/i/c/ac;->d:Lcom/sleepycat/b/i/c/ac;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/i/c/ac;->e:Lcom/sleepycat/b/i/c/ac;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sleepycat/b/i/c/ac;->f:[Lcom/sleepycat/b/i/c/ac;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/c/ac;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sleepycat/b/i/c/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/ac;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/c/ac;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sleepycat/b/i/c/ac;->f:[Lcom/sleepycat/b/i/c/ac;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/c/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/c/ac;

    return-object v0
.end method
