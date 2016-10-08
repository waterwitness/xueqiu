.class public final enum Lu/aly/cw;
.super Ljava/lang/Enum;
.source "Page.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/cw;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/cw;

.field public static final enum b:Lu/aly/cw;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/cw;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lu/aly/cw;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    new-instance v0, Lu/aly/cw;

    const-string v1, "PAGE_NAME"

    const-string v2, "page_name"

    invoke-direct {v0, v1, v4, v3, v2}, Lu/aly/cw;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cw;->a:Lu/aly/cw;

    .line 50
    new-instance v0, Lu/aly/cw;

    const-string v1, "DURATION"

    const-string v2, "duration"

    invoke-direct {v0, v1, v3, v5, v2}, Lu/aly/cw;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cw;->b:Lu/aly/cw;

    new-array v0, v5, [Lu/aly/cw;

    sget-object v1, Lu/aly/cw;->a:Lu/aly/cw;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/cw;->b:Lu/aly/cw;

    aput-object v1, v0, v3

    sput-object v0, Lu/aly/cw;->f:[Lu/aly/cw;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/cw;->c:Ljava/util/Map;

    .line 55
    const-class v0, Lu/aly/cw;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 55
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cw;

    .line 56
    sget-object v2, Lu/aly/cw;->c:Ljava/util/Map;

    .line 1104
    iget-object v3, v0, Lu/aly/cw;->e:Ljava/lang/String;

    .line 56
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-short p3, p0, Lu/aly/cw;->d:S

    .line 96
    iput-object p4, p0, Lu/aly/cw;->e:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/cw;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/cw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/cw;

    return-object v0
.end method

.method public static values()[Lu/aly/cw;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/cw;->f:[Lu/aly/cw;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/cw;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 100
    iget-short v0, p0, Lu/aly/cw;->d:S

    return v0
.end method
