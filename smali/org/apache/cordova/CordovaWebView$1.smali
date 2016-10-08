.class final Lorg/apache/cordova/CordovaWebView$1;
.super Landroid/content/BroadcastReceiver;
.source "CordovaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaWebView;->d()V
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView$1;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$1;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebView;->a(Lorg/apache/cordova/CordovaWebView;)V

    .line 335
    return-void
.end method
