.class public final enum Lcom/sleepycat/b/i/c/at;
.super Ljava/lang/Enum;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/c/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/c/at;

.field public static final enum b:Lcom/sleepycat/b/i/c/at;

.field public static final enum c:Lcom/sleepycat/b/i/c/at;

.field public static final enum d:Lcom/sleepycat/b/i/c/at;

.field private static final synthetic e:[Lcom/sleepycat/b/i/c/at;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1048
    new-instance v0, Lcom/sleepycat/b/i/c/at;

    const-string v1, "BAD_FORMAT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/at;->a:Lcom/sleepycat/b/i/c/at;

    new-instance v0, Lcom/sleepycat/b/i/c/at;

    const-string v1, "VERSION_MISMATCH"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/at;->b:Lcom/sleepycat/b/i/c/at;

    new-instance v0, Lcom/sleepycat/b/i/c/at;

    const-string v1, "GROUP_MISMATCH"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/i/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/at;->c:Lcom/sleepycat/b/i/c/at;

    new-instance v0, Lcom/sleepycat/b/i/c/at;

    const-string v1, "NOT_A_MEMBER"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/i/c/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/c/at;->d:Lcom/sleepycat/b/i/c/at;

    .line 1047
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/i/c/at;

    sget-object v1, Lcom/sleepycat/b/i/c/at;->a:Lcom/sleepycat/b/i/c/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/c/at;->b:Lcom/sleepycat/b/i/c/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/i/c/at;->c:Lcom/sleepycat/b/i/c/at;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/i/c/at;->d:Lcom/sleepycat/b/i/c/at;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/i/c/at;->e:[Lcom/sleepycat/b/i/c/at;

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
    .line 1047
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/c/at;
    .locals 1

    .prologue
    .line 1047
    const-class v0, Lcom/sleepycat/b/i/c/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/at;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/c/at;
    .locals 1

    .prologue
    .line 1047
    sget-object v0, Lcom/sleepycat/b/i/c/at;->e:[Lcom/sleepycat/b/i/c/at;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/c/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/c/at;

    return-object v0
.end method
