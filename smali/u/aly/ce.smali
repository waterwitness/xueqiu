.class public final enum Lu/aly/ce;
.super Ljava/lang/Enum;
.source "InstantMsg.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ce;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ce;

.field public static final enum b:Lu/aly/ce;

.field public static final enum c:Lu/aly/ce;

.field public static final enum d:Lu/aly/ce;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ce;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lu/aly/ce;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 53
    new-instance v0, Lu/aly/ce;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v6, v3, v2}, Lu/aly/ce;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ce;->a:Lu/aly/ce;

    .line 54
    new-instance v0, Lu/aly/ce;

    const-string v1, "ERRORS"

    const-string v2, "errors"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/ce;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ce;->b:Lu/aly/ce;

    .line 55
    new-instance v0, Lu/aly/ce;

    const-string v1, "EVENTS"

    const-string v2, "events"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/ce;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ce;->c:Lu/aly/ce;

    .line 56
    new-instance v0, Lu/aly/ce;

    const-string v1, "GAME_EVENTS"

    const-string v2, "game_events"

    invoke-direct {v0, v1, v5, v7, v2}, Lu/aly/ce;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ce;->d:Lu/aly/ce;

    new-array v0, v7, [Lu/aly/ce;

    sget-object v1, Lu/aly/ce;->a:Lu/aly/ce;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ce;->b:Lu/aly/ce;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ce;->c:Lu/aly/ce;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ce;->d:Lu/aly/ce;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/ce;->h:[Lu/aly/ce;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ce;->e:Ljava/util/Map;

    .line 61
    const-class v0, Lu/aly/ce;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ce;

    .line 62
    sget-object v2, Lu/aly/ce;->e:Ljava/util/Map;

    .line 1114
    iget-object v3, v0, Lu/aly/ce;->g:Ljava/lang/String;

    .line 62
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-short p3, p0, Lu/aly/ce;->f:S

    .line 106
    iput-object p4, p0, Lu/aly/ce;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ce;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/ce;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ce;

    return-object v0
.end method

.method public static values()[Lu/aly/ce;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/ce;->h:[Lu/aly/ce;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/ce;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 110
    iget-short v0, p0, Lu/aly/ce;->f:S

    return v0
.end method
