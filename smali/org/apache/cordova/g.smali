.class public Lorg/apache/cordova/g;
.super Ljava/lang/Object;
.source "CordovaPlugin.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field public a:Lorg/apache/cordova/CordovaWebView;

.field public b:Lorg/apache/cordova/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/cordova/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/cordova/g;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public static c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/b;)Z
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lorg/apache/cordova/d;

    invoke-direct {v0, p2}, Lorg/apache/cordova/d;-><init>(Lorg/json/JSONArray;)V

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/cordova/g;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
