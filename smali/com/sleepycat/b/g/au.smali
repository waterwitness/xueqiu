.class public final enum Lcom/sleepycat/b/g/au;
.super Ljava/lang/Enum;
.source "Provisional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/g/au;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/g/au;

.field public static final enum b:Lcom/sleepycat/b/g/au;

.field public static final enum c:Lcom/sleepycat/b/g/au;

.field static final synthetic d:Z

.field private static final synthetic e:[Lcom/sleepycat/b/g/au;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    const-class v0, Lcom/sleepycat/b/g/au;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/au;->d:Z

    .line 191
    new-instance v0, Lcom/sleepycat/b/g/au;

    const-string v3, "NO"

    invoke-direct {v0, v3, v2}, Lcom/sleepycat/b/g/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    .line 196
    new-instance v0, Lcom/sleepycat/b/g/au;

    const-string v3, "YES"

    invoke-direct {v0, v3, v1}, Lcom/sleepycat/b/g/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    .line 203
    new-instance v0, Lcom/sleepycat/b/g/au;

    const-string v3, "BEFORE_CKPT_END"

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/b/g/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/g/au;->c:Lcom/sleepycat/b/g/au;

    .line 186
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/g/au;

    sget-object v3, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    aput-object v3, v0, v2

    sget-object v2, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sleepycat/b/g/au;->c:Lcom/sleepycat/b/g/au;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/g/au;->e:[Lcom/sleepycat/b/g/au;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/g/au;
    .locals 1

    .prologue
    .line 186
    const-class v0, Lcom/sleepycat/b/g/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/au;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/g/au;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/sleepycat/b/g/au;->e:[Lcom/sleepycat/b/g/au;

    invoke-virtual {v0}, [Lcom/sleepycat/b/g/au;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/g/au;

    return-object v0
.end method


# virtual methods
.method public final a(JJ)Z
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    sget-boolean v2, Lcom/sleepycat/b/g/au;->d:Z

    if-nez v2, :cond_0

    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_0
    sget-object v2, Lcom/sleepycat/b/g/au$1;->a:[I

    invoke-virtual {p0}, Lcom/sleepycat/b/g/au;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 220
    sget-boolean v1, Lcom/sleepycat/b/g/au;->d:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move v0, v1

    .line 221
    :cond_1
    :goto_0
    :pswitch_1
    return v0

    .line 217
    :pswitch_2
    cmp-long v2, p3, v4

    if-eqz v2, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
